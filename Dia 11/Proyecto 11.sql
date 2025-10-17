DROP TABLE IF EXISTS reservas;
DROP TABLE IF EXISTS habitaciones;
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes(
	cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    apellido VARCHAR(80) NOT NULL,
    telefono VARCHAR(80) NOT NULL,
    correo VARCHAR(100),
    documento_id VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE reservas(
	reserva_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    inicio_reserva DATE NOT NULL,
    fin_reserva DATE NOT NULL,
    estado ENUM('Pendiente','Confirmada','Cancelada','Finalizada') NOT NULL DEFAULT 'Pendiente',
	FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE habitaciones(
	habitacion_id INT AUTO_INCREMENT PRIMARY KEY,
    reserva_id INT NOT NULL,
    tipo VARCHAR(80) NOT NULL,
    capacidad_huespedes INT NOT NULL,
    FOREIGN KEY (reserva_id) REFERENCES reservas(reserva_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


