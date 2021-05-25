import React, { useState } from "react";

const MainContextProvider = ({ children }) => {
	const [isResult, setResult] = useState(false);
	const [isSearchBarFocused, setSearchBarFocused] = useState(false);

	return <MainContext.Provider value={{ isResult, setResult, isSearchBarFocused, setSearchBarFocused }}>{children}</MainContext.Provider>;
};

export const MainContext = React.createContext();

export default MainContextProvider;
