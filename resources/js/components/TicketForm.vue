<template>
  <div>
    <headerContent-component
      v-bind:padre="this.$route.params.padre"
      v-bind:hijo="this.$route.params.hijo"
      v-bind:icono="this.$route.params.icono"
    ></headerContent-component>
    <v-container>
      <v-row>
        <v-col>
          <template>
            <v-card>
              <v-card-title>
                <v-dialog v-model="ticket_dialog" persistent max-width="290">
                  <template v-slot:activator="{ on }">
                    <v-btn color="primary" dark v-on="on">Nuevo Ticket</v-btn>
                  </template>
                  <v-card>
                    <v-card-title class="headline">Use Google's location service?</v-card-title>
                    <v-card-text>Let Google help apps determine location. This means sending anonymous location data to Google, even when no apps are running.</v-card-text>
                    <v-card-actions>
                      <v-spacer></v-spacer>
                      <v-btn color="green darken-1" text @click="ticket_dialog = false">Disagree</v-btn>
                      <v-btn color="green darken-1" text @click="ticket_dialog = false">Agree</v-btn>
                    </v-card-actions>
                  </v-card>
                </v-dialog>
                <v-spacer></v-spacer>
                <v-menu
                  ref="fecha_ticket"
                  v-model="fecha_ticket"
                  :close-on-content-click="false"
                  transition="scale-transition"
                  offset-y
                  max-width="290px"
                  min-width="290px"
                >
                  <template v-slot:activator="{ on }">
                    <v-text-field
                      v-model="dateFormatted"
                      label="Buscar tickets por fecha"
                      prepend-icon="event"
                      @blur="date = parseDate(dateFormatted)"
                      v-on="on"
                    ></v-text-field>
                  </template>
                  <v-date-picker
                    @change="obtenerTickets()"
                    v-model="date"
                    no-title
                    @input="fecha_ticket = false"
                    locale="es"
                  ></v-date-picker>
                </v-menu>
              </v-card-title>
              <v-card-title>
                Lista de tickets
                <v-spacer></v-spacer>
                <v-text-field
                  v-model="search"
                  append-icon="fa-search"
                  label="Buscar"
                  single-line
                  hide-details
                ></v-text-field>
              </v-card-title>
              <v-data-table
                :headers="headers"
                :items="desserts"
                :search="search"
                :loading="loading"
                loading-text="Cargando..."
                :no-data-text="no_data_text"
                :no-results-text="no_results_text"
              >
                <template v-slot:item.actions="{ item }">
                  <v-icon small class="mr-2" @click="editItem(item)">fa-clipboard-list</v-icon>
                  <v-icon small @click="deleteItem(item)">fa-clipboard-list</v-icon>
                </template>
              </v-data-table>
            </v-card>
          </template>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>


<script>
export default {
  data() {
    return {
      no_data_text: "No se encontraron registros",
      no_results_text: "No se encontraron coincidencias",
      fecha_ticket: false,
      date: new Date().toISOString().substr(0, 10),
      dateFormatted: this.formatDate(new Date().toISOString().substr(0, 10)),
      ticket_dialog: false,
      loading: true,
      search: "",
      headers: [
        { text: "Código", value: "codigo", align: "start" },
        { text: "Conductor", value: "conductor" },
        { text: "Ruta", value: "unidad_nombre" },
        { text: "Acciones", value: "actions", sortable: false }
      ],
      desserts: []
    };
  },
  watch: {
    date(val) {
      this.dateFormatted = this.formatDate(this.date);
    }
  },
  methods: {
    editItem(item){
      console.log(item);
    },
    formatDate(date) {
      if (!date) return null;

      const [year, month, day] = date.split("-");
      return `${day}/${month}/${year}`;
    },
    parseDate(date) {
      if (!date) return null;

      const [month, day, year] = date.split("/");
      return `${year}-${day.padStart(2, "0")}-${month.padStart(2, "0")}`;
    },
    obtenerParametros() {},
    obtenerUnidades() {
      axios
        .get("/obtener-unidades")
        .then(response => {})
        .catch(error => {});
    },
    obtenerConductores() {
      axios
        .get("/obtener-conductores")
        .then(response => {})
        .catch(error => {});
    },
    obtenerRuta() {
      axios
        .get("/obtener-rutas")
        .then(response => {})
        .catch(error => {});
    },
    obtenerTickets() {
      axios
        .post("/obtener-tickets", {
          fecha: this.date
        })
        .then(response => {
          this.desserts = response.data;
          if (this.desserts) {
            this.loading = false;
          }
        })
        .catch(error => {});
    }
  },
  created() {
    axios.interceptors.request.use(
      config => {
        this.loading = true;
        return config;
      },
      error => {
        this.loading = false;
        return Promise.reject(error);
      }
    );

    axios.interceptors.response.use(
      response => {
        this.loading = true;
        return response;
      },
      error => {
        this.loading = false;
        return Promise.reject(error);
      }
    );
  },
  mounted() {
    this.obtenerTickets();
  }
};
</script>