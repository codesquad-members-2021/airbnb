import styled from 'styled-components';

type LayerWidth = {
    width: number;
};

const Layer = styled.ul<LayerWidth>`
    position: ${({ theme }) => theme.LayerTheme.position};
    top: ${({ theme }) => theme.LayerTheme.top};
    left: ${({ theme }) => theme.LayerTheme.left};
    border: ${({ theme }) => theme.LayerTheme.border};
    width: ${({ width }) => width}px;
    height: ${({ theme }) => theme.LayerTheme.height};
`;

export default Layer;
