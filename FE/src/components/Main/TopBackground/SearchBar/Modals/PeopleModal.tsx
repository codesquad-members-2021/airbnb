import styled from 'styled-components';
import { AiOutlinePlusCircle, AiOutlineMinusCircle } from 'react-icons/ai';
import {
  useSearchBarDispatch,
  useSearchBarState,
} from '../../../../../util/contexts/SearchBarContext';
import DefaultButton from '../../../../Common/DefaultButton';
import Modal from '../../../../Common/Modal';


type TPeopleKeys = "adult" | "child" | 'infant';
type TPeopleItemText = {
  type: TPeopleKeys;
} & {
  name: string;
  desc: string;
};

const PeopleItemText: TPeopleItemText[] = [
  { name: '성인', desc: '만 13세 이상', type: 'adult' },
  { name: '어린이', desc: '만 2 ~ 12세', type: 'child' },
  { name: '유아', desc: '만 2세 미만', type: 'infant' },
];

const PeopleModal = ({ ...props }) => {
  const textData: TPeopleItemText[] = PeopleItemText;
  const { peopleCount } = useSearchBarState();
  const searchBarDispatch = useSearchBarDispatch();

  const handleIncreasePeopleCnt = (type: TPeopleKeys) =>
    searchBarDispatch({ type: 'INCREASE_PEOPLE_COUNT', payload: type });
  const handleDecreasePeopleCnt = (type: TPeopleKeys) =>
    searchBarDispatch({ type: 'DECREASE_PEOPLE_COUNT', payload: type });

  return (
    <PeopleModalLayout {...props}>
      <MenuList>
        {textData.map(({ name, desc, type }, i) => (
          <MenuItem key={i}>
            <ul>
              <li>{name}</li>
              <li>{desc}</li>
            </ul>
            <div>
              <MenuItemButton onClick={() => handleIncreasePeopleCnt(type)}>
                <AiOutlinePlusCircle />
              </MenuItemButton>

              <span>{peopleCount[type]}</span>
              <MenuItemButton onClick={() => handleDecreasePeopleCnt(type)}>
                <AiOutlineMinusCircle />
              </MenuItemButton>
            </div>
          </MenuItem>
        ))}
      </MenuList>
    </PeopleModalLayout>
  );
};

export default PeopleModal;

// --- Styled Components ---
const PeopleModalLayout = styled(Modal)`
  position: absolute;
  right: 0;
  width: 30%;

  background-color: ${({ theme }) => theme.colors.white};
  padding: 32px 48px;
  border-radius: 40px;

  flex-direction: column;
`;

const MenuList = styled.ul`
  display: flex;
  flex-direction: column;
`;

const MenuItem = styled.li`
  width: 100%;
  padding: 16px 0;
  display: grid;
  grid-template-columns: repeat(2, 1fr);

  ul li {
    font-size: ${({ theme }) => theme.fontSize.L};
    font-weight: ${({ theme }) => theme.fontWeight.bold};
    &:last-child {
      font-size: ${({ theme }) => theme.fontSize.M};
      color: ${({ theme }) => theme.colors.gray3};
      font-weight: ${({ theme }) => theme.fontWeight.normal};
    }
  }

  & + & {
    border-top: 1px solid ${({ theme }) => theme.colors.gray5};
  }

  div {
    display: flex;
    align-items: center;
    justify-content: space-around;
  }
`;

const MenuItemButton = styled(DefaultButton)`
  svg {
    font-size: 22px;
  }
`;
