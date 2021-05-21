import styled from 'styled-components';
import Subject from '../../utilComponents/Subject';
import { IText } from '../../../common/reference';
import {
  cssImageAuto,
  cssMainChildren,
  cssResetList,
  cssSectionSize,
} from '../../../common/styles/CommonStyledCSS';

const RoomType = ({ captions }: IText) => {
  return (
    captions && (
      <StyledRoomType>
        <Subject>{captions.subject}</Subject>
        <RoomList>
          {captions.items.map((item, i) => (
            <RoomItem key={i}>
              <img src={`./images/main/roomType/0${i + 1}.jpg`} alt={`${i}`} />
              <p className="bold">{item.name}</p>
            </RoomItem>
          ))}
        </RoomList>
      </StyledRoomType>
    )
  );
};

export default RoomType;

// --- Styled Components ---
const StyledRoomType = styled.div`
  ${cssMainChildren};
  ${cssSectionSize};
`;

const RoomList = styled.ul`
  ${cssResetList};
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
