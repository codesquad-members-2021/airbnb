import styled from 'styled-components';
import { AiOutlineSmile } from 'react-icons/ai';
import DefaultButton from '../../../../../../Common/DefaultButton';

interface ISliderButton {
  btnType?: 'L' | 'R';
}

const SliderButton = ({ btnType = 'L', ...props }: ISliderButton) => {
  return (
    <SliderButtonLayout btnType={btnType} {...props}>
      <AiOutlineSmile />
    </SliderButtonLayout>
  );
};

export default SliderButton;

// --- Styled Components ---
const SliderButtonLayout = styled(DefaultButton)<ISliderButton>`
  position: absolute;
  padding: 0;
  z-index: 1;
  bottom: -7.5%;

  right: ${({ btnType }) => (btnType === 'L' ? 'auto' : '-4px')};
  left: ${({ btnType }) => (btnType === 'L' ? '-4px' : 'auto')};

  svg {
    background-color: ${({ theme }) => theme.colors.skyblue};
    color: ${({ theme }) => theme.colors.white};
    border-radius: 50%;
  }
`;
