import styled from 'styled-components';
import Subject from '../Common/Subject';
import { ResponsiveFluid } from '../Common/ResponsiveFluid';
import {
  cssImageAuto,
  cssMainChildren
} from '../../util/styles/CommonStyledCSS';
import { ITextNearbyRoomType } from '../../util/reference';

const Nearby = ({ nearbyItems }: ITextNearbyRoomType) => {
  return (
    nearbyItems && (
      <NearbyLayout>
        <Subject>{nearbyItems.subject}</Subject>
        <NearbyList>
          {nearbyItems.items.map((item, i) => {
            const { name, distance } = item;

            return (
              <NearbyItem key={i}>
                <img src={`./images/main/nearby/0${i + 1}.jpg`} alt={`${i}`} />
                <div className="content">
                  <p className="bold">{name}</p>
                  <p>{distance}</p>
                </div>
              </NearbyItem>
            );
          })}
        </NearbyList>
      </NearbyLayout>
    )
  );
};

export default Nearby;

// --- Styled Components ---
const NearbyLayout = styled(ResponsiveFluid)`
  ${cssMainChildren};
  flex-direction: column;
`;

const NearbyList = styled.ul`
  font-size: ${({ theme }) => theme.fontSize.XL};

  display: grid;
  grid-template-columns: repeat(4, 1fr);
  column-gap: 16px;
  row-gap: 24px;
`;

const NearbyItem = styled.li`
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
