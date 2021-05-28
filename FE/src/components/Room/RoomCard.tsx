import styled from 'styled-components';

function RoomCard() {
  return (
    <RoomCardLayout>
      <RoomCardBlock>
        <ThumbnailLayer>
          <img width="100%" src="https://a0.muscache.com/im/pictures/a2938a3e-d0f5-4503-9ebb-00475b73fac0.jpg" />  
        </ThumbnailLayer>
        
        <ContentsLayer>
          <ContentsRow> 
            <div> 서초구의 아파트 전체 </div>
            <div> 타이틀타이틀 </div>
            <div> 최대인원... </div>
            <div> 별점 </div>
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
  width: 100%;
`

const ContentsLayer = styled.div`
  width: 100%;
  margin-left: 25px;
  
  display: flex;
  flex-direction: column;
`

const ContentsRow = styled.div`
  width: 100%;
`;

export default RoomCard;