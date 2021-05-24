import GlobalStyle from "./config/GlobalStyle";
import MainContextProvider from "./config/MainContextProvider";
import Root from "./components/Root";

const App = () => (
	<MainContextProvider>
		<GlobalStyle />
		<Root />
	</MainContextProvider>
);

export default App;
