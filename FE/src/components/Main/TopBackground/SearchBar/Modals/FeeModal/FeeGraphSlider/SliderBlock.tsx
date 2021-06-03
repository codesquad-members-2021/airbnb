import styled from 'styled-components';
import { CustomChildren } from '../../../../../../../util/types';

interface ISliderBlock {
  width: number;
  height: number;
  left: number;
  children?: CustomChildren;
}

const SliderBlock = ({ children, ...props }: ISliderBlock) => {
  return <SliderBlockLayout {...props}>{children}</SliderBlockLayout>;
};

export default SliderBlock;

// --- Styled Components ---

const SliderBlockLayout = styled.div.attrs(({ left, width }: ISliderBlock) => ({
  style: { left: `${left}px`, width: `${width}px` },
}))<ISliderBlock>`
  height: ${({ height }) => `${height}px`};
  background-color: ${({ theme }) => theme.colors.black1};

  position: relative;
`;
