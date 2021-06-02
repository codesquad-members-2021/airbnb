import styled from 'styled-components';
import { ICanvasSize } from '../../../../../../../util/reduce';
import { CustomChildren } from '../../../../../../../util/types';

interface ISliderBlock extends ICanvasSize {
    children?: CustomChildren;
};

const SliderBlock = ({ width, height, children, ...props }: ISliderBlock) => {
  return (
    <SliderBlockLayout width={width} height={height} {...props}>
        {children}
    </SliderBlockLayout>
  );
};

export default SliderBlock;

// --- Styled Components ---
const SliderBlockLayout = styled.div<ISliderBlock>`
  width: ${({ width }) => `${width}px`};
  height: ${({ height }) => `${height}px`};
  background-color: ${({ theme }) => theme.colors.black1};
`;
