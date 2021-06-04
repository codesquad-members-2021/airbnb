import React, { useState } from 'react';
import { threeDigitsComma } from '../../util/util';
import styled from 'styled-components';
import { IRoomInfo } from '../../util/types/Room';
import RoomInfoModal from './RoomInfoModal';

interface IChangeProps {
  type: string, 
  payload: any
}

interface IRoomCardInfo {
  room: IRoomInfo,
  handeChangePosition: ({type, payload}: IChangeProps) => void
}

interface IRoomCardDescriptionInfo {
  [index: string]: string | boolean;
}

function RoomCard({ room, handeChangePosition }:IRoomCardInfo) {
  const [isModalVisible, setIsModalVisible] = useState<boolean>(false);
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

  const handleClickRoomCard = () => {
    handeChangePosition({type: "room", payload: { id: room.id }})
  }
  const handleClickWishButton = (e: any) => {
    e.stopPropagation();
    console.log("wish")
  }

  return (
    <RoomCardLayout onClick={handleClickRoomCard}>
      <RoomCardBlock>
        <ThumbnailLayer>
          <Thumbnail src={room.thumbnails[0]} />
        </ThumbnailLayer>
        
        <ContentsLayer>
          <ContentsRow>
            <ContentsLeftColumn> 
              <ContentsHeaderSpan> {room.address} </ContentsHeaderSpan>
              <ContentsTitleSpan onClick={() => setIsModalVisible(true)}> {room.name} </ContentsTitleSpan>
              <ContentsDescriptionArea> { renderDescriptions(numberedDescriptions) } </ContentsDescriptionArea>
              <ContentsDescriptionArea> { renderDescriptions(optionDescriptions) } </ContentsDescriptionArea>
            </ContentsLeftColumn>
            <ContentsRightColumn>
              <ContentsWishButton onClick={handleClickWishButton}>❤️</ContentsWishButton>  
            </ContentsRightColumn>
          </ContentsRow>
          <ContentsFooterRow>
            <ContentsFooterArea>
              <ContentsReviewArea>
                <ContentsReviewText> {`⭐️ 별점 ${room.rating}`} {`(후기 ${room.commentCount} 개)`} </ContentsReviewText>
              </ContentsReviewArea>
              <ContentsPriceArea>
                <ContentsPriceText>{`₩ ${threeDigitsComma(room.salePrice)} / 박`}</ContentsPriceText>
                <ContentsPriceTotalText>{`총액 ₩${threeDigitsComma(room.originalPrice)}`}</ContentsPriceTotalText>
              </ContentsPriceArea>
            </ContentsFooterArea>
          </ContentsFooterRow>
        </ContentsLayer>
      </RoomCardBlock>

      <RoomInfoModal data={room} isModalVisible={isModalVisible} setIsModalVisible={setIsModalVisible} />
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
const Thumbnail = styled.img.attrs(
  props => ({ src: props.src })
)`
  width:100%; 
  height:200px;
  object-fit: cover; 
` 

const ContentsLayer = styled.div`
  width: 50%;
  display: flex;
  flex-direction: column;

  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
`

const ContentsLeftColumn = styled.div`
  width: 85%;
  height: 100%;
  
  display: flex;
  flex-direction: column;
`;

const ContentsRightColumn = styled.div`
  width: 15%;
  
  display: flex;
  justify-content: flex-end;
`;
const ContentsWishButton = styled.span`
  font-size: 20px;
  cursor: pointer;
`

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
  width: 100%;
  margin-top: auto;
  
  display: flex;
  align-items: flex-end;
`;
const ContentsReviewArea = styled.div`
  width: 100%;
  display: flex;
  flex-direction: column;
`;

const ContentsReviewText = styled.div`
  font-size: 12px;
  
  display: flex;
  
  flex-grow: 1;
`

const ContentsPriceArea = styled.div`
  font-size: 14px;
  
  display: flex;
  flex-direction: column;
`;
const ContentsPriceText = styled.div`
  font-size: 14px;
  
  display: flex;
  justify-content: flex-end;
`
const ContentsPriceTotalText = styled.div`
  color: grey;
  font-size: 12px;
  
  display: flex;
  justify-content: flex-end;
`;

const ContentsRow = styled.div`
  display: flex;
  width: 100%;
`;

const ContentsFooterRow = styled(ContentsRow)`
  height: 100%;
`;
export default RoomCard;
