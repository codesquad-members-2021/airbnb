import styled from 'styled-components';

const ModalContainer = styled.div<{isActive:boolean}>`
display: ${(props) => (props.isActive ? 'block' : 'none')};
    border-radius: 40px;
    background-color: #FFFFFF;
    box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
`

export default ModalContainer;