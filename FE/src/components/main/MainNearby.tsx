import styled from 'styled-components';
import Subject from '../utilComponents/Subject';
import { IText } from '../../common/reference';
import {
  cssImageAuto,
  cssMainChildren,
  cssSectionSize,
} from '../../common/styles/CommonStyledCSS';

const MainNearby = ({ nearbyItems }: IText) => {
  return (
    nearbyItems && (
      <MainNearbyBlock>
        <Subject>{nearbyItems.subject}</Subject>
        <MainNearbyList>
          {nearbyItems.items.map((item, i) => {
            const { name, distance } = item;

            return (
              <MainNearbyItem key={i}>
                <img src={`./images/main/nearby/0${i + 1}.jpg`} alt={`${i}`} />
                <div className="content">
                  <p className="bold">{name}</p>
                  <p>{distance}</p>
                </div>
              </MainNearbyItem>
            );
          })}
        </MainNearbyList>
      </MainNearbyBlock>
    )
  );
};

export default MainNearby;

// --- Styled Components ---
const MainNearbyBlock = styled.div`
  ${cssMainChildren};
  ${cssSectionSize};
`;

const MainNearbyList = styled.ul`
  font-size: ${({ theme }) => theme.fontSize.XL};

  display: grid;
  grid-template-columns: repeat(4, 1fr);
  column-gap: 16px;
  row-gap: 24px;
`;

const MainNearbyItem = styled.li`
  ${cssImageAuto};
  img {
    border-radius: 10px;
  }

  p.bold {
    font-weight: ${({theme}) => theme.fontWeight.bold};
  }

  display: grid;
  grid-template-columns: 80px 1fr;
  column-gap: 16px;
  align-items: center;
`;
