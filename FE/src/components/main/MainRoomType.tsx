import styled from 'styled-components';
import Subject from '../utilComponents/Subject';
import { IText } from '../../common/reference';
import {
  cssImageAuto,
  cssMainChildren,
  cssSectionSize,
} from '../../common/styles/CommonStyledCSS';

const MainRoomType = ({ roomTypeItems }: IText) => {
  return (
    roomTypeItems && (
      <MainRoomTypeBlock>
        <Subject>{roomTypeItems.subject}</Subject>
        <MainRoomList>
          {roomTypeItems.items.map((item, i) => (
            <MainRoomItem key={i}>
              <img src={`./images/main/roomType/0${i + 1}.jpg`} alt={`${i}`} />
              <p className="bold">{item.name}</p>
            </MainRoomItem>
          ))}
        </MainRoomList>
      </MainRoomTypeBlock>
    )
  );
};

export default MainRoomType;

// --- Styled Components ---
const MainRoomTypeBlock = styled.div`
  ${cssMainChildren};
  ${cssSectionSize};
`;

const MainRoomList = styled.ul`
  font-size: ${({ theme }) => theme.fontSize.XXL};

  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 16px;
`;

const MainRoomItem = styled.li`
  ${cssImageAuto};
  img {
    border-radius: 10px;
    width: 308px;
  }

  p.bold {
    font-weight: ${({ theme }) => theme.fontWeight.bold};
  }
`;
