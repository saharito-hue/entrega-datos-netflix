Table tabla;

void setup() {
  size(400, 400);

  tabla = loadTable("netflix_titles.csv", "header");
  
  if (tabla == null) {
    println("❌ No se pudo cargar el archivo.");
    return;
  }

  println("✅ Cargado. Mostrando títulos:");
  
  // Recorrer y mostrar los títulos
  for (TableRow fila : tabla.rows()) {
    String titulo = fila.getString("title");
    String pais = fila.getString("country");
    println(titulo + " - " + pais);
  }
}
