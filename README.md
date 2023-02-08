[![1](https://github.com/rozoandrescamilo/Smart-Contract-para-consultar-estados-de-una-Purchase-Order/blob/main/img/1.jpg?raw=true "1")](https://github.com/Smart-Contract-para-consultar-estados-de-una-Purchase-Order/blob/main/img/1.jpg?raw=true "1")

# Funcionamiento de un contrato inteligente con el nodo de Firefly en la interfaz web de Kaleido

- [Despliegue el nodo de Firefly en la interfaz de Kaleido](#despliege-de-nodo-de-firefly-en-la-interfaz-de-kaleido)
  - [Inicio rápido](#inicio-rápido)
    - [Elegir tipo de entorno de trabajo](#elegir-tipo-de-entorno-de-trabajo)
  - [Desplegar recursos de FireFly](#desplegar-recursos-de-fireFly)
    - [Configuración del Supernodo](#configuración-del-supernodo)
    - [Inicializar FireFly](#inicializar-fireFly)
    - [Accediendo a la interfaz Swagger](#accediendo-a-la-interfaz-swagger)
  - [Trabajar con contratos inteligentes](#trabajar-con-contratos-inteligentes) 

    - [Comprobando conexión](#comprobando-conexión)
- [Implementar contratos inteligentes](#implementar-contratos-inteligentes)
- [Desarrollo con herramienta Firefly](#desarrollo-con-herramienta-firefly)


# Despliegue el nodo de Firefly en la interfaz de Kaleido

Para este proceso se tiene en cuenta la documentación oficial de Kaleido para el uso del Supernodo de código abierto FireFly: 
[https://docs.kaleido.io/using-kaleido/quick-start-firefly/](https://docs.kaleido.io/using-kaleido/quick-start-firefly/ "https://docs.kaleido.io/using-kaleido/quick-start-firefly/")

Hyperledger FireFly es un Supernodo de código abierto, un stack completo para que las empresas construyan y escalen aplicaciones Web3 seguras.

La forma más fácil de entender un FireFly Supernode es pensarlo como una caja de herramientas. Conecta sus aplicaciones existentes y / o sistemas de back office a la caja de herramientas y dentro de ella hay dos conjuntos diferentes de herramientas. Un conjunto de herramientas lo ayuda a conectarse al mundo Web3 que ya existe, y el otro conjunto le permite construir nuevas aplicaciones descentralizadas rápidamente con seguridad y escalabilidad.

## Inicio rápido

Se debe visitar la web:[https://console.kaleido.io](https://console.kaleido.io "https://console.kaleido.io"), seleccionar Crear una cuenta y elegir uno de los diferentes planes.

Para este proceso se crea una cuenta tipo Starter con el fin de realizar pruebas de la herramienta, en caso de elegir Kaleido será mejor opción de cuenta Enterprise que cuenta con mejores beneficios:

[![1](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/1.png?raw=true "1")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/1.png?raw=true "1")

Precios de los diferentes planes: 
[https://www.kaleido.io/pricing](https://www.kaleido.io/pricing "https://www.kaleido.io/pricing")

[![2](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/2.png?raw=true "2")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/2.png?raw=true "2")

Después de elegir el plan se debe Crear una red para construir la primera red blockchain. Proporcionar un nombre para la red comercial y seleccionar una región para conectar con los servicios en la nube.

[![3](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/3.png?raw=true "3")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/3.png?raw=true "3")

### Elegir tipo de entorno de trabajo

Kaleido ofrece dos tipos de entorno de nivel superior: Servicio estándar de Blockchain y Servicio estándar de Blockchain + FireFly SuperNode. Se elige el Servicio estándar de Blockchain + FireFly SuperNode:

[![4](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/4.png?raw=true "4")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/4.png?raw=true "4")

Actualmente los únicos protocolos de blockchain compatibles para entornos FireFly son Ethereum e Hyperledger Fabric. Asi que se trabajará con la red de Ethereum.

[![5](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/5.png?raw=true "5")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/5.png?raw=true "5")

A continuación, se elije su cliente Ethereum blockchain subyacente y un algoritmo asociado. Las opciones son Geth / PoA, Quorum / IBFT, Quorum / Raft, Besu / PoA y Besu / IBFT. Se recomienda una configuración simple de Geth / PoA.

[![6](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/6.png?raw=true "6")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/6.png?raw=true "6")

[![7](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/7.png?raw=true "7")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/7.png?raw=true "7")

## Desplegar recursos de FireFly

### Configuración del Supernodo

Hacer clic en el botón CREAR SUPERNODO para comenzar a configurar el primer FireFly Supernode.

[![8](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/8.png?raw=true "8")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/8.png?raw=true "8")

Se debe elijir un nombre y membresía para el nodo. La membresía predeterminada está disponible para su uso en esta etapa.
En el siguiente ejemplo n1 está obligado a Sample Organization membresía ( incumplimiento ).

[![9](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/9.png?raw=true "9")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/9.png?raw=true "9")

A continuación, asignará su nodo FireFly a un nodo blockchain nuevo o existente y un tiempo de ejecución ipfs nuevo o existente.
Dado el contexto de este inicio rápido, se creara un nuevo elemento para cada uno.

[![10](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/10.png?raw=true "10")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/10.png?raw=true "10")

Actualmente solo están disponibles nodos FireFly de pequeño tamaño.

[![11](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/11.png?raw=true "11")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/11.png?raw=true "11")

### Inicializar FireFly

Cuando los tres tiempos de ejecución hacen la transición a un Started se podrá Inicializar el Nodo FireFly que se ha creado.

Detrás de escena, Kaleido te está generando un espacio de nombres de aplicaciones, compilar el contrato inteligente central de FireFly ( ya que FireFly requiere un contrato inteligente implementado para sincronizar la actividad con la cadena ) y promover la fuente en su entorno FireFly recién creado.

[![12](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/12.png?raw=true "12")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/12.png?raw=true "12")

Si el nodo FireFly se inicializa correctamente, verá una pantalla de descripción general del entorno con todos los tiempos de ejecución en un estado Iniciado.

[![13](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/13.png?raw=true "13")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/13.png?raw=true "13")

[![14](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/14.png?raw=true "14")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/14.png?raw=true "14")

Dirección del contrato desplegado: `0x30084faa975175ca4123d2c84bb3998f5deed4ff`

### Accediendo a la interfaz Swagger

Desde la sección de Dashboard en menú, se debe hacer clic en Manage en el nodo FireFly para acceder a las utilidades disponibles.

[![15](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/15.png?raw=true "15")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/15.png?raw=true "15")

En una nueva pestaña se debe seleccinar OPEN WEB UI para abrir la FireFly Swagger API de su nodo.

[![16](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/16.png?raw=true "16")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/16.png?raw=true "16")

La interfaz de usuario Swagger incorporada es un conjunto de servicios web de acceso y gestión de datos de organizaciones y proyectos a través de REST APIs. Con la API, se pueden acceder, gestionar y actualizar las APIs, dominios y proyectos de una organización. También se puede buscar en el catálogo público de API, agregar e iniciar integraciones a nivel de API. 

[![17](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/17.png?raw=true "17")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/17.png?raw=true "17")

## Trabajar con contratos inteligentes

Casi todas las plataformas blockchain ofrecen la capacidad de ejecutar contratos inteligentes en cadena para administrar estados en el libro mayor compartido. FireFly brinda soporte para usar API RESTful para interactuar con los contratos inteligentes implementados en las cadenas de bloques de destino y escuchar eventos a través de websocket.

La API unificada de FireFly crea una experiencia de aplicación consistente independientemente de la implementación específica de blockchain subyacente. También proporciona características amigables para el desarrollador, como la generación automática de especificaciones OpenAPI para contratos inteligentes, además de una interfaz de usuario Swagger incorporada.

[![18](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/18.png?raw=true "18")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/18.png?raw=true "18")

[![19](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/19.png?raw=true "19")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/19.png?raw=true "19")

[![20](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/20.png?raw=true "20")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/20.png?raw=true "20")

[![21](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/21.png?raw=true "21")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/21.png?raw=true "21")

[![22](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/22.png?raw=true "22")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/22.png?raw=true "22")

[![23](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/23.png?raw=true "23")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/23.png?raw=true "23")

[![24](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/24.png?raw=true "24")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/24.png?raw=true "24")

[![25](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/25.png?raw=true "25")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/25.png?raw=true "25")