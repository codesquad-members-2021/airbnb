import styled from "styled-components";
import { ReactComponent as MenuIcon } from "./../../../../icons/menu.svg";
import { ReactComponent as UserIcon } from "./../../../../icons/user.svg";
export interface IAppProps {}

export default function UserMenu(props: IAppProps) {
	return (
		<>
			<StyleUserMenu>
				<UserButton>
					<MenuIcon className="menu_icon" width="24" height="24" />
					<UserIcon className="user_icon" stroke="#ffffff" width="28" height="28" />
				</UserButton>
			</StyleUserMenu>
		</>
	);
}

const StyleUserMenu = styled.div`
	display: flex;
	justify-content: flex-end;
`;

const UserButton = styled.button`
	display: flex;
	justify-content: space-evenly;
	align-items: center;
	width: 76px;
	height: 40px;
	border-radius: 25px;
	border: none;
	background-color: white;
	.menu_icon {
		padding: 2px;
	}
	.user_icon {
		padding: 5px;
		border-radius: 25px;
		background-color: #828282;
	}
`;
