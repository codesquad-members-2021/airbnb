import Logo from "./Logo";
import Tour from "./Tour";

export interface IAppProps {}

export default function Header(props: IAppProps) {
	return (
		<div>
			<Logo />
			<Tour />
		</div>
	);
}
