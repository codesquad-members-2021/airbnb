import React from 'react';
import styled from 'styled-components';
import { ModalLayerType, LayerSpecType } from '../../../../shared/interface';

const ModalLayer = ({ children, options }: ModalLayerType): React.ReactElement => {
    const { top, left, width, height } = options;
    return (
        <Layer className="layer" top={top} left={left} width={width} height={height}>
            {children}
        </Layer>
    );
};

const Layer = styled.ul<LayerSpecType>`
    position: ${({ theme }) => theme.LayerTheme.position};
    top: ${({ top }) => top}px;
    left: ${({ left }) => left}px;
    border: ${({ theme }) => theme.LayerTheme.border};
    width: ${({ width }) => width}px;
    height: ${({ height }) => height}px;
`;

export default ModalLayer;
