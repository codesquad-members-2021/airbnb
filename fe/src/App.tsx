import React from "react";
import { ChakraProvider, Button } from "@chakra-ui/react";

function App() {
  return (
    <ChakraProvider>
      <Button colorScheme="blue">Button</Button>
    </ChakraProvider>
  );
}

export default App;
