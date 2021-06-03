import GlobalStyle from "./config/GlobalStyle";
import ResultContextProvider from "./config/ResultContextProvider";
import SearchBarContextProvider from "./config/SearchBarContextProvider";
import Root from "./components/Root";

const App = () => (
	<SearchBarContextProvider>
		<ResultContextProvider>
			<GlobalStyle />
			<Root />
		</ResultContextProvider>
	</SearchBarContextProvider>
);

export default App;
