import styled from 'styled-components';

type LayerWidth = {
    width: number;
    top: number;
    left: number;
};

const Layer = styled.ul<LayerWidth>`
    position: ${({ theme }) => theme.LayerTheme.position};
    top: ${({ top }) => top}px;
    left: ${({ left }) => left}px;
    border: ${({ theme }) => theme.LayerTheme.border};
    width: ${({ width }) => width}px;
    height: ${({ theme }) => theme.LayerTheme.height};
`;

const Container = styled.div`
    display: flex;
    flex: 1;
    border: 1px solid green;
`;

const Tab = styled.div`
    flex: 1;
`;

const NavigatingText = styled.p`
    margin: 0;
`;

export { Layer, Container, Tab, NavigatingText };
