import { createGlobalStyle } from "styled-components";
import reset from "styled-reset";

const GlobalStyles = createGlobalStyle`
	${reset};
	a{
		text-decoration : none;
		color:inherit;
		cursor:pointer;
		color: #fff;
	}
	*{
		box-sizing:border-box;
	}
	body{
		color:#fff;
		font-size : 16px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.App{
		
	}
`;

export default GlobalStyles;
