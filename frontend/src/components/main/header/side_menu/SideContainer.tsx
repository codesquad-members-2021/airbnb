import HostApply from "./HostApply";
import Region from "./Region";
import UserMenu from "./UserMenu";

export interface IAppProps {}

export default function SideContainer(props: IAppProps) {
	return (
		<div>
			<HostApply />
			<Region />
			<UserMenu />
		</div>
	);
}
