import HostApply from "./HostApply";
import Region from "./Region";
import UserMenu from "./UserMenu";

import { EmptyInterface } from "./../../../../utils/interfaces";

export default function SideContainer(props: EmptyInterface) {
	return (
		<div>
			<HostApply />
			<Region />
			<UserMenu />
		</div>
	);
}
