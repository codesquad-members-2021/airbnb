import styled from 'styled-components';
import Subject from '../../utilComponents/Subject';
import { IText } from '../../../common/reference';
import {
  cssImageAuto,
  cssMainChildren,
  cssResetList,
  cssSectionSize,
} from '../../../common/styles/CommonStyledCSS';

const Nearby = ({ captions }: IText) => {
  return (
    captions && (
      <StyledNearby>
        <Subject>{captions.subject}</Subject>
        <NearbyList>
          {captions.items.map((item, i) => {
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
      </StyledNearby>
    )
  );
};

export default Nearby;

// --- Styled Components ---
const StyledNearby = styled.div`
  ${cssMainChildren};
  ${cssSectionSize};
`;

const NearbyList = styled.ul`
  ${cssResetList};
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
