<?php

namespace App\Http\Controllers;

use App\Ticket;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TicketController extends Controller
{
    //
    public function obtenerTicket(Request $request){        
        $fechaSalida = Carbon::parse($request->fecha);
        $ticket = Ticket::join('unidad','unidad.id','=','ticket.unidad_id')
        ->join('conductor','conductor.id','=','ticket.conductor_id')
        ->join('ruta','ruta.id','=','ticket.ruta_id')
        ->select(DB::raw('ticket.id,ticket.codigo,ticket.numero_vuelta,unidad.nombre as unidad_nombre,
        unidad.placa, concat(conductor.nombre," ",conductor.apellido) as conductor, ruta.nombre'))
        // ->where('ticket.estado_id',1)
        ->whereDate('ticket.fecha_salida',$fechaSalida)
        ->get();
        return response()->json($ticket);
    }
}
