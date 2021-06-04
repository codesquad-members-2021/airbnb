import React from 'react';
import { threeDigitsComma } from '../../util/util';
import styled from 'styled-components';
import { IRoomInfo } from '../../util/types/Room';

interface IRoomCardInfo {
  room: IRoomInfo,
}

interface IRoomCardDescriptionInfo {
  [index: string]: string | boolean;
}

function RoomCard({ room }:IRoomCardInfo) {
  // console.log("RoomCard", room)
  const numberedDescriptions = {
    "최대 인원": `${room.max}명`, 
    "침실": `${room.bedCount}개`,
    "욕실": `${room.bathroomCount}개`, 
  }

  const optionDescriptions = {
    "에어컨": room.option.airConditioner,
    "무료 주차장": room.option.freeParkingLot,
    "헤어 드라이어": room.option.hairDryer,
    "주방": room.option.kitchen,
    "와이파이": room.option.wifi
  }

  const renderDescriptions = (targetDescriptions: IRoomCardDescriptionInfo) => {
    return Object.entries(targetDescriptions).map(([key, val], idx) => {
      return val && (
        <React.Fragment key={`desc-${key}-${idx}`}>
          <ContentsDescriptionSpan>{key} {typeof val !== "boolean" && val}</ContentsDescriptionSpan>
          {idx < Object.keys(targetDescriptions).length-1 && <ContentsDescriptionSpan> · </ContentsDescriptionSpan>}
        </React.Fragment>
      )
    })
  }

  return (
    <RoomCardLayout>
      <RoomCardBlock>
        <ThumbnailLayer>
          <img width="100%" src={room.thumbnails[0]} />  
        </ThumbnailLayer>
        
        <ContentsLayer>
          <ContentsRow> 
            <ContentsHeaderSpan> {room.address} </ContentsHeaderSpan>
            <ContentsTitleSpan> {room.name} </ContentsTitleSpan>

            <ContentsDescriptionArea> { renderDescriptions(numberedDescriptions) } </ContentsDescriptionArea>
            <ContentsDescriptionArea> { renderDescriptions(optionDescriptions) } </ContentsDescriptionArea>
            <ContentsFooterArea>
              <ContentsReviewArea>
                <span> {`⭐️ 별점 ${room.rating}`} </span>
                <span> {`(후기 ${room.commentCount} 개)`} </span>
              </ContentsReviewArea>
              <ContentsPriceArea>
                {`₩ ${threeDigitsComma(room.salePrice)} / 박`}
              </ContentsPriceArea>
              
            </ContentsFooterArea>
            
          </ContentsRow>
          
        </ContentsLayer>
      </RoomCardBlock>
    </RoomCardLayout>
  )
}

const RoomCardLayout = styled.div`
  width: 100%;
  display: flex;
  flex-direction: column;

  & + & {
    margin-top: 25px;
    
    ::before {
      content: "";
      width: 100%;
      margin-bottom: 25px;
      border-top: 1px solid grey;
    }
  } 
`;

const RoomCardBlock = styled.div`
  width: 100%;
  
  display: flex;
`;

const ThumbnailLayer = styled.div`
  width: 50%;
  /* max-width: 330px; */
  margin-right: 25px;
`

const ContentsLayer = styled.div`
  width: 50%;
  
  display: flex;
  flex-direction: column;

  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
`

const ContentsRow = styled.div`
  width: 100%;
  
  display: flex;
  flex-direction: column;
`;

const ContentsSpanHidable = styled.span`
  overflow: hidden;
  text-overflow: ellipsis;
`

const ContentsTitleSpan = styled(ContentsSpanHidable)`
  font-size: 14px;
  margin-bottom: 8px;
`

const ContentsHeaderSpan = styled(ContentsSpanHidable)`
  color: grey;
  font-size: 12px;
  
  margin-bottom: 8px;
`;

const ContentsDescriptionArea = styled.div`
  white-space: normal;
`;

const ContentsDescriptionSpan = styled(ContentsSpanHidable)`
  color: grey;
  font-size: 12px;
`;

const ContentsFooterArea = styled.div`
  display: flex;  
`;
const ContentsReviewArea = styled.div`
  display: flex;
`

const ContentsPriceArea = styled.div`
  justify-content: flex-end;
`;

export default RoomCard;