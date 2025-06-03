<?php
class Alternativa {
    // Conexión a la base de datos
    private $pdo;

    // Constructor que guarda la conexión al instanciar la clase
    public function __construct($conexion) {
        $this->pdo = $conexion;
    }

    // Método para crear una nueva alternativa para una pregunta
    public function create($pregunta_id, $texto, $es_correcta) {
        // Sentencia SQL para insertar la alternativa
        $sql = "INSERT INTO Alternativa (pregunta_id, texto, es_correcta) VALUES (?, ?, ?)";

        // Preparamos la consulta
        $stmt = $this->pdo->prepare($sql);

        // Ejecutamos la consulta con los datos reales
        $stmt->execute([$pregunta_id, $texto, $es_correcta]);

        // Devolvemos el ID de la alternativa recién insertada
        return $this->pdo->lastInsertId();
    }

    // Método para obtener todas las alternativas
    public function getAll() {
        // Consulta para obtener todas las alternativas
        $sql = "SELECT * FROM Alternativa";

        // Ejecutamos la consulta
        $stmt = $this->pdo->query($sql);

        // Devolvemos todas las alternativas como array asociativo
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>