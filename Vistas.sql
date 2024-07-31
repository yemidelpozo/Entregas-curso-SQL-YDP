USE reservas_actividades_hospitality;

-- Creación de una Vista sobre Reservas por Fecha:
-- Esta vista mostrará la cantidad de reservas realizadas por fecha.
CREATE VIEW
    ReservasPorFecha AS
SELECT
    DATE (Fecha) AS Fecha,
    COUNT(*) AS TotalReservas
FROM
    RESERVAS
GROUP BY
    DATE (Fecha);

-- Vista para Cantidad de Reservas por Actividad:
-- Esta vista muestra la cantidad de reservas realizadas para cada actividad, así como la capacidad total de la misma.
CREATE VIEW
    ReservasPorActividad AS
SELECT
    ACTIVIDADES.Id_actividad,
    ACTIVIDADES.Capacidad,
    COUNT(RESERVAS.ID_reserva) AS TotalReservas
FROM
    ACTIVIDADES
    LEFT JOIN RESERVAS ON ACTIVIDADES.Id_actividad = RESERVAS.ID_Actividad
GROUP BY
    ACTIVIDADES.ID_Actividad,
    ACTIVIDADES.Capacidad;

-- Vista para Cantidad de Cancelaciones por Tipo de Reservas:
-- Esta vista permitirá visualizar la cantidad de cancelaciones para cada tipo de reserva.
CREATE VIEW
    CancelacionesPorTipoReserva AS
SELECT
    TIPO_RESERVA.TIPO,
    COUNT(RESERVAS.Id_reserva) AS TotalCancelaciones
FROM
    TIPO_RESERVA
    LEFT JOIN RESERVAS ON TIPO_RESERVA.Id_tiporeserva = RESERVAS.Id_tiporeserva
WHERE
    RESERVAS.CANCELACION IS NOT NULL
GROUP BY
    TIPO_RESERVA.TIPO;
    