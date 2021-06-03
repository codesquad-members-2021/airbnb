import styled from 'styled-components';
import { AiOutlineSmile } from 'react-icons/ai';
import DefaultButton, {
  IDefaultButton,
} from '../../../../../../Common/DefaultButton';

interface ISliderButton extends IDefaultButton {
  onMouseDown?: (e: React.MouseEvent | MouseEvent) => void;
  onMouseUp?: (e: React.MouseEvent | MouseEvent) => void;
  left: number;
}

const SliderButton = ({ left, ...props }: ISliderButton) => {
  return (
    <SliderButtonLayout left={left} {...props}>
      <AiOutlineSmile />
    </SliderButtonLayout>
  );
};

export default SliderButton;

// --- Styled Components ---

const SliderButtonLayout = styled(DefaultButton).attrs(
  ({ left }: ISliderButton) => ({
    style: { left: `calc(${left}px - 3%)` },
  }),
)<ISliderButton>`
  position: absolute;
  padding: 0;
  z-index: 1;
  bottom: -7.5%;

  svg {
    background-color: ${({ theme }) => theme.colors.skyblue};
    color: ${({ theme }) => theme.colors.white};
    border-radius: 50%;
  }
`;
