# StudioLegaleAll
contiene 3 moduli :
1. webapp-layer con bootstrap (jsp+javascript) e spring mvc + Call Rest get Service from Controller

                                                      Call Rest get Service from Controller
                                                              Importa nel pom jersey
                                                              <!-- 	call rest service -->
                                                                  <dependency>
                                                                    <groupId>com.sun.jersey</groupId>
                                                                    <artifactId>jersey-json</artifactId>
                                                                    <version>1.8</version>
                                                                  </dependency>

                                                                  <dependency>
                                                                    <groupId>com.sun.jersey</groupId>
                                                                    <artifactId>jersey-client</artifactId>
                                                                    <version>1.8</version>
                                                                  </dependency>
                                                                <!-- 	call rest service end-->
                                                              6.4.3.2	Dal controller chiama rest

                                                              @RequestMapping("/dashboard_2")
                                                                private static void savePayment2() {
                                                                  Client client = Client.create();

                                                                  WebResource webResource = client
                                                                     .resource("http://localhost:8081/RestOCC/rest/payment/occ");

                                                                  ClientResponse response = webResource.accept("application/json")
                                                                                 .get(ClientResponse.class);

                                                                  if (response.getStatus() != 200) {
                                                                     throw new RuntimeException("Failed : HTTP error code : "
                                                                    + response.getStatus());
                                                                  }

                                                                  String output = response.getEntity(String.class);

                                                                  System.out.println("Output from Server .... \n");
                                                                  System.out.println(output);


2. service-layer con rest con jax-rs (Jersey + Spring )
3. persistence-layer con hibernate e jpa + postgressql
