<?php
class Pregunta
{
    // Conexión a la base de datos
    private $pdo;

    // Constructor: recibe la conexión PDO al crear la instancia de la clase
    public function __construct($pdo)
    {
        $this->pdo = $pdo;
    }

    // Método para insertar una nueva pregunta en la tabla 'Pregunta'
    public function create($enunciado, $evaluacion_id)
    {
        // Sentencia SQL para insertar una nueva fila
        $sql = "INSERT INTO Pregunta (enunciado, evaluacion_id) VALUES (?, ?)";

        // Preparamos la consulta para evitar inyecciones SQL
        $stmt = $this->pdo->prepare($sql);

        // Ejecutamos la consulta enviando los datos como array
        return $stmt->execute([$enunciado, $evaluacion_id]);
    }

    // Método para obtener todas las preguntas
    public function getAll()
    {
        // Consulta SQL para obtener todas las preguntas
        $sql = "SELECT * FROM Pregunta";

        // Ejecutamos la consulta directamente (sin parámetros)
        $stmt = $this->pdo->query($sql);

        // Retornamos los resultados como arreglo asociativo
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>