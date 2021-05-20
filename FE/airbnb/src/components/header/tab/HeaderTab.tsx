import styled from 'styled-components';
import { useRecoilState } from 'recoil';
import { tabSelectedState } from '../headerAtom';

interface Props {
  title: string;
  idx: number;
}

const HeaderTab = ({ title, idx }: Props) => {
  const [isTabSelected, setIsTabSelected] = useRecoilState(tabSelectedState);

  const handleClick = () => {
    const newIsTabSelected: boolean[] = isTabSelected.map((v, index) => {
      if (index === idx) return true;
      return false;
    });
    setIsTabSelected(newIsTabSelected);
  };

  return (
    <StyledHeaderTab isTabSelected={isTabSelected} idx={idx} onClick={handleClick}>
      {title}
    </StyledHeaderTab>
  );
};
export default HeaderTab;

interface styleProps {
  isTabSelected: boolean[];
  idx: number;
}

const StyledHeaderTab = styled.div<styleProps>`
  position: relative;
  ::before {
    content: '';
    width: ${({ isTabSelected, idx }) => isTabSelected[idx] && '90%'};
    position: absolute;
    color: black;
    top: 1.7rem;
    left: 50%;
    transform: translateX(-50%);
    transition: all 0.3s;
    border: ${({ isTabSelected, idx }) => isTabSelected[idx] && '1px solid black'};
  }
  &:hover {
    ::before {
      content: '';
      width: ${({ isTabSelected, idx }) => (isTabSelected[idx] ? '90%' : '0.5rem')};
      position: absolute;
      color: black;
      top: 1.7rem;
      left: 50%;
      transform: translateX(-50%);
      transition: all 0.3s;
      border: 1px solid black;
      display: block;
    }
  }
`;
