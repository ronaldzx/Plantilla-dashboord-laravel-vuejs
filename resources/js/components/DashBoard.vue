<template>
  <v-app id="inspire">
    <v-navigation-drawer v-model="drawer" :clipped="$vuetify.breakpoint.lgAndUp" app>
      <v-list dense>
        <template v-for="opcion in menu">
          <v-row v-if="opcion.heading" :key="opcion.heading" align="center">
            <v-col cols="6">
              <v-subheader v-if="opcion.heading">{{ opcion.heading }}</v-subheader>
            </v-col>
            <v-col cols="6" class="text-center">
              <a href="#!" class="body-2 black--text">EDIT</a>
            </v-col>
          </v-row>
          <v-list-group
            v-else-if="opcion.hijo"
            :key="opcion.descripcion"
            v-model="opcion.model"
            :prepend-icon="opcion.model ? 'fa-chevron-up' : 'fa-chevron-down'"
            append-icon
          >
            <template v-slot:activator>
              <v-list-item-content>
                <v-list-item-title>{{ opcion.descripcion }}</v-list-item-title>
              </v-list-item-content>
            </template>
            <v-list-item v-for="(child, i) in opcion.hijo" :key="i" link 
            :to="{name: child.route,
            params:{padre:opcion.descripcion,hijo:child.descripcion,icono:child.icono}}">
              <v-list-item-action v-if="child.icono">
                <v-icon>{{ child.icono }}</v-icon>
              </v-list-item-action>
              <v-list-item-content>
                <v-list-item-title>{{ child.descripcion }}</v-list-item-title>
              </v-list-item-content>
            </v-list-item>
          </v-list-group>
          <v-list-item v-else :key="opcion.descripcion" link :to="{name: opcion.route}">
            <!-- :to="opcion.route"> -->
            <v-list-item-action>
              <v-icon>{{ opcion.icono }}</v-icon>
            </v-list-item-action>
            <v-list-item-content>
              <v-list-item-title>{{ opcion.descripcion }}</v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </template>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar :clipped-left="$vuetify.breakpoint.lgAndUp" app color="blue darken-3" dark>
      <v-app-bar-nav-icon @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
      <v-toolbar-title style="width: 300px" class="ml-0 pl-4">
        <span class="hidden-sm-and-down">Sistema de Gestión de Tickets</span>
      </v-toolbar-title>
      <v-spacer></v-spacer>
      <v-btn icon @click="cerrarSesion()" alt="Log out">
        <v-icon>settings_power</v-icon>
      </v-btn>
      <v-btn icon large>
        <v-avatar size="32px" item>
          <v-img src="https://cdn.vuetifyjs.com/images/logos/logo.svg" alt="Vuetify"></v-img>
        </v-avatar>
      </v-btn>
    </v-app-bar>
    <v-content>
      <router-view></router-view>
    </v-content>
    <v-btn bottom color="pink" dark fab fixed right @click="dialog = !dialog">
      <v-icon>mdi-plus</v-icon>
    </v-btn>
    <v-dialog v-model="dialog" width="800px">
      <v-card>
        <v-card-title class="grey darken-2">Create contact</v-card-title>
        <v-container>
          <v-row class="mx-2">
            <v-col class="align-center justify-space-between" cols="12">
              <v-row align="center" class="mr-0">
                <v-avatar size="40px" class="mx-3">
                  <img src="//ssl.gstatic.com/s2/oz/images/sge/grey_silhouette.png" alt />
                </v-avatar>
                <v-text-field placeholder="Name"></v-text-field>
              </v-row>
            </v-col>
            <v-col cols="6">
              <v-text-field prepend-icon="mdi-account-card-details-outline" placeholder="Company"></v-text-field>
            </v-col>
            <v-col cols="6">
              <v-text-field placeholder="Job title"></v-text-field>
            </v-col>
            <v-col cols="12">
              <v-text-field prepend-icon="mdi-mail" placeholder="Email"></v-text-field>
            </v-col>
            <v-col cols="12">
              <v-text-field type="tel" prepend-icon="mdi-phone" placeholder="(000) 000 - 0000"></v-text-field>
            </v-col>
            <v-col cols="12">
              <v-text-field prepend-icon="mdi-text" placeholder="Notes"></v-text-field>
            </v-col>
          </v-row>
        </v-container>
        <v-card-actions>
          <v-btn text color="primary">More</v-btn>
          <v-spacer></v-spacer>
          <v-btn text color="primary" @click="dialog = false">Cancel</v-btn>
          <v-btn text @click="dialog = false">Save</v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-app>
</template>

<script>
export default {
  props: {
    source: String
  },
  data() {
    return {
      menu: [],
      dialog: false,
      drawer: null,
      items: [
        { icon: "mdi-contacts", text: "Contacts", ruta: "example" },
        { icon: "mdi-history", text: "Tickets", ruta: "ticket" },
        { icon: "mdi-content-copy", text: "Duplicates", ruta: "ejemplo" },
        {
          icon: "mdi-chevron-up",
          "icon-alt": "mdi-chevron-down",
          text: "Labels",
          model: true,
          children: [{ icon: "mdi-plus", text: "Create label" }]
        },
        {
          icon: "mdi-chevron-up",
          "icon-alt": "mdi-chevron-down",
          text: "More",
          model: false,
          children: [
            { text: "Import" },
            { text: "Export" },
            { text: "Print" },
            { text: "Undo changes" },
            { text: "Other contacts" }
          ]
        },
        { icon: "mdi-settings", text: "Settings" },
        { icon: "mdi-message", text: "Send feedback" },
        { icon: "mdi-help-circle", text: "Help" },
        { icon: "mdi-cellphone-link", text: "App downloads" },
        { icon: "mdi-keyboard", text: "Go to the old version" }
      ]
    };
  },
  mounted() {
    axios
      .get("obtener-menu")
      .then(response => {
        console.log(response);
        this.menu = response.data;
        console.log(this.menu);
      })
      .catch(error => {
        console.log(error);
      });
  },
  methods: {
    cerrarSesion() {
      axios
        .get("/cerrar-sesion")
        .then(response => {
          this.$notify({
            type: "success",
            group: "foo",
            title: "Exito",
            text: "Has cerrado la sesión"
          });
          location.reload();
        })
        .catch(error => {
          this.$notify({
            type: "warn",
            group: "foo",
            title: "Error",
            text: "Ocurrió un error"
          });
          location.reload();
        });
    }
  }
};
</script>