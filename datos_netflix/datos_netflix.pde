Table datos;
HashMap<String, Integer> conteoPaises;

void setup() {
  size(800, 400);
  background(255);

  //archivo
  datos = loadTable("netflix_titles.csv", "header");

  // mapa 
  conteoPaises = new HashMap<String, Integer>();

  // Contar
  for (TableRow fila : datos.rows()) {
    String paises = fila.getString("country");
    if (paises != null && paises.length() > 0) {
      String pais = paises.split(",")[0].trim();
      if (conteoPaises.containsKey(pais)) {
        conteoPaises.put(pais, conteoPaises.get(pais) + 1);
      } else {
        conteoPaises.put(pais, 1);
      }
    }
  }

  // Mostrar resultados
  for (String p : conteoPaises.keySet()) {
    println(p + ": " + conteoPaises.get(p));
  }
}

void draw() {
}
