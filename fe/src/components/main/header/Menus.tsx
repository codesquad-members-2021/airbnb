import  MenuItem  from "./MenuItem"

import styled from "styled-components"

const Menus = () => {
    return (
        <StyledMenus>
            <MenuItem>숙소</MenuItem>
            <MenuItem>체험</MenuItem>
            <MenuItem>온라인 체험</MenuItem>
        </StyledMenus>
    )
}

export default Menus

const StyledMenus = styled.nav`
display: flex;
`
 