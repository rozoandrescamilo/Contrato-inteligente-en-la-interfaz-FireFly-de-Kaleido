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
    - [Conceptos clave](#conceptos-clave)
  - [Contratos inteligentes de Ethereum](#contratos-inteligentes-de-ethereum)
    - [Requisitos](#requisitos)
    - [Compilación de contratos](#compilación-de-contratos)
    - [Despliegue en la web UI Sandbox](#despliegue-en-la-web-ui-sandbox)


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

### Conceptos clave

FireFly define las siguientes construcciones para admitir contratos inteligentes personalizados:

- **Interfaz de contrato:** FireFly define una forma agnóstica común de blockchain para describir contratos inteligentes. Esto se conoce como interfaz de contrato. Una interfaz de contrato está escrita en el formato FireFly Interface ( FFI ). Es un documento JSON simple que tiene un nombre, un espacio de nombres, una versión, una lista de métodos y una lista de eventos.

- **API HTTP:** Basado en una interfaz de contrato, FireFly define además una API HTTP para el contrato inteligente, que se completa con una especificación OpenAPI y la interfaz de usuario Swagger. Una API HTTP define un /invoke ruta raíz para enviar transacciones, y un /query root root para enviar solicitudes de consulta para leer el estado nuevamente.

- **Listador de eventos de Blockchain:** Independientemente del diseño específico de una cadena de bloques, el procesamiento de transacciones siempre es asincrónico. Esto significa que se envía una transacción a la red, momento en el cual el cliente que envía recibe un reconocimiento de que ha sido aceptada para su posterior procesamiento. Luego, el cliente escucha las notificaciones de blockchain cuando la transacción se confirma en el libro mayor de blockchain.

- **Suscripción del evento:** Mientras un oyente de eventos le dice a FireFly que realice un seguimiento de ciertos eventos emitidos por blockchain, una suscripción de eventos le dice a FireFly que transmita esos eventos a la aplicación del cliente. Cada suscripción representa un flujo de eventos que se pueden entregar a un cliente que escucha con varios modos de entrega con garantía de entrega al menos una vez.

[![18](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/18.png?raw=true "18")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/18.png?raw=true "18")

## Contratos inteligentes de Ethereum

Se toma como referencia la guía oficial de Hyperledger FireFly para Trabajar con contratos inteligentes de Ethereum:  
[https://hyperledger.github.io/firefly/tutorials/custom_contracts/ethereum.html](https://hyperledger.github.io/firefly/tutorials/custom_contracts/ethereum.html "https://hyperledger.github.io/firefly/tutorials/custom_contracts/ethereum.html")

Esta guía describe los pasos para implementar un contrato inteligente en una cadena de bloques Ethereum y usar FireFly para interactuar con él con el fin de enviar transacciones, consultar estados y escuchar eventos.

### Requisitos

Si necesita desplegar un contrato inteligente de Ethereum se recomienda utilizar la API de despliegue de contratos de FireFly en la sección llamada Sandbox. Esto es útil en muchos casos. Por ejemplo, al querer desplegar un contrato de tokens y hacer que FireFly acuñe algunos tokens.

[![28](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/28.png?raw=true "28")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/28.png?raw=true "28")

Para iniciar es necesario poder compilar contratos utilizando herramientas como solc o truffle, ya que después de compilar un contrato correctamente se genera un archivo de salida JSON con los campos necesarios para construir la solicitud en la sección SANDBOX WEB UI de la API.

Para este proceso se utilizara el entorno de desarrollo Truffle, diseñado para facilitar el desarrollo de aplicaciones Blockchain, permite compilar código y desplegar contratos inteligentes.

Lo primero es instalar NPM y Node.js en sus versiones más recientes, ya que se requiere previamente para instalar Truffle.

`sudo apt install nodejs`

`sudo apt install npm`

[![19](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/19.png?raw=true "19")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/19.png?raw=true "19")

[![20](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/20.png?raw=true "20")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/20.png?raw=true "20")

En la consola de preferencia (En este caso WSL Ubuntu 20.04.5) se confirma que las librerias de npm esten actualizadas y después se escribe el siguiente comando para instalar Truffle:

`npm update -g`

`sudo npm install -g truffle`

[![21](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/21.png?raw=true "21")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/21.png?raw=true "21")

Para confirmar que todo salió bien se utiliza el comando:

`truffle --version`

[![22](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/22.png?raw=true "22")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/22.png?raw=true "22")

### Compilación de contratos

Se debe crear una carpeta para inicializar el proyecto de truffle, una vez iniciado se despliega carpetas de contracts, migrations, test y un archivo llamado truffle_config.js. Se debe crear un contrato inteligente de ejemplo y almacenarlo en la carpeta de contracts. Todos los contratos inteligentes que se creen deben almacenarse allí. 

`truffle init`

[![23](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/23.png?raw=true "23")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/23.png?raw=true "23")

Se utilizara un contrato inteligente llamado SimpleStorage.sol, como su nombre indica, es un contrato muy simple que almacena una variable de tipo entero de 256 bits sin signo, emite un evento cuando el valor se actualiza, y le permite recuperar el valor actual.

[![24](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/24.png?raw=true "24")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/24.png?raw=true "24")

```solidity

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// Declara un nuevo contrato
contract SimpleStorage {
    // Storage Persiste entre transacciones
    uint256 x;

    // Permite cambiar el entero sin signo almacenado
    function set(uint256 newValue) public {
        x = newValue;
        emit Changed(msg.sender, newValue);
    }

    // Devuelve el entero sin signo almacenado actualmente
    function get() public view returns (uint256) {
        return x;
    }

    event Changed(address indexed from, uint256 value);
}

```

Para compilar el contrato inteligente, se ejecuta el comando:

`truffle compile`

[![25](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/25.png?raw=true "25")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/25.png?raw=true "25")

### Despliegue en la web UI Sandbox

Para el despliegue del contrato compilado es necesario tener FireFly CLI instalado en la máquina, para esto es necesario descargarla versión compatible con el sistema operativo en el repositorio oficial en Github:
[https://github.com/hyperledger/firefly-cli](https://github.com/hyperledger/firefly-cli "https://github.com/hyperledger/firefly-cli")

Suponiendo que se ha descargado el paquete de GitHub en el directorio de descargas, ejecutar el siguiente comando: 

`sudo tar -zxf ~/Downloads/firefly-cli_*.tar.gz -C /usr/local/bin ff`

[![29](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/29.png?raw=true "29")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/29.png?raw=true "29")

Para desplegar el contrato compilado en FireFly, ejecutar:

`ff deploy <ethereum | fabric> <STACK_NAME> simple_storage.json`

La CLI imprimirá la dirección blockchain del contrato. Se usará cuando se registre la API del contrato.





Desplegado correctamente el contrato es necesario buscar el archivo .json que se generó, ubicandose en la ruta /build/contracts/SimpleStorage.json :

[![26](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/26.png?raw=true "26")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/26.png?raw=true "26")

Si necesita desplegar un contrato inteligente de Ethereum se recomienda utilizar la API de despliegue de contratos de FireFly en la sección del Sandbox llamado Define a Contract Interface.

Allí se escoge el formato de interfaz ABI - Solidity Application Binary Interface, se le agrega un nombre y una versión, en el esquema se pega el contenido del archivo .json que se generó y se corre.

[![27](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/27.png?raw=true "27")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/27.png?raw=true "27")

Luego se debe registrar el contrato API para generar una HTTP API interactiva desde el contrato desplegado, se agrega nombre y la dirección del contrato arrojado al desplegar.

[![30](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/30.png?raw=true "30")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/30.png?raw=true "30")

En el cuerpo de la respuesta hay un par de URL cerca de la parte inferior. Si navega a la que está etiquetada como ui en el navegador se debería ver la Swagger UI para tu contrato inteligente.

[![31](https://github.com/rozoandrescamilo/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/31.png?raw=true "31")](https://github.com/Contrato-inteligente-en-la-interfaz-FireFly-de-Kaleido/blob/main/img/31.png?raw=true "31")