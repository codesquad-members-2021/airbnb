import GlobalStyle from "./config/GlobalStyle";
import ResultContextProvider from "./config/ResultContextProvider";
import SearchBarContextProvider from "./config/SearchBarContextProvider";
import Root from "./components/Root";

const App = () => (
	<ResultContextProvider>
		<SearchBarContextProvider>
			<GlobalStyle />
			<Root />
		</SearchBarContextProvider>
	</ResultContextProvider>
);

export default App;
