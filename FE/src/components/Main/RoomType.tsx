import styled from 'styled-components';
import Subject from '../Common/Subject';
import { IText } from '../../util/reference';
import {
  cssImageAuto,
  cssMainChildren,
  cssSectionSize,
} from '../../util/styles/CommonStyledCSS';

const RoomType = ({ roomTypeItems }: IText) => {
  return (
    roomTypeItems && (
      <RoomTypeLayout>
        <Subject>{roomTypeItems.subject}</Subject>
        <RoomList>
          {roomTypeItems.items.map((item, i) => (
            <RoomItem key={i}>
              <img src={`./images/main/roomType/0${i + 1}.jpg`} alt={`${i}`} />
              <p className="bold">{item.name}</p>
            </RoomItem>
          ))}
        </RoomList>
      </RoomTypeLayout>
    )
  );
};

export default RoomType;

// --- Styled Components ---
const RoomTypeLayout = styled.div`
  ${cssMainChildren};
  ${cssSectionSize};
`;

const RoomList = styled.ul`
  font-size: ${({ theme }) => theme.fontSize.XXL};

  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 16px;
`;

const RoomItem = styled.li`
  ${cssImageAuto};
  img {
    border-radius: 10px;
    width: 308px;
  }

  p.bold {
    font-weight: ${({ theme }) => theme.fontWeight.bold};
  }
`;
