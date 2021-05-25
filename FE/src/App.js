import GlobalStyle from "./config/GlobalStyle";
import MainContextProvider from "./config/MainContextProvider";
import SearchBarContextProvider from "./config/SearchBarContextProvider";
import Root from "./components/Root";

const App = () => (
	<MainContextProvider>
		<SearchBarContextProvider>
			<GlobalStyle />
			<Root />
		</SearchBarContextProvider>
	</MainContextProvider>
);

export default App;
