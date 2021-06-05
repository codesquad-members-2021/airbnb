import { useState } from 'react'
import styled from 'styled-components'
import { useRecoilValue, useRecoilState } from 'recoil'
import Reservation from '../reservation/Reservation'
import WishToggleBtn from './WishListToggle'
import {
  RecoilValueGroup,
  defaultValue,
  RoomData, reserveMsg
} from '../../customHook/atoms'
import { setScheduleMsg } from './MiniSearchBar'
import { getFeeMsg } from '../searchBar/fee/Fee'

interface IpriceType {
  type?:string
}
const ConfirmMsg = () => {
  const [msg, setMsg] = useState(`예약이 완료되었습니다.`)
  const [confirmMsg, setConfirmMsg] = useRecoilState(reserveMsg)

  new Promise(() => {
    setTimeout(() => {
      setConfirmMsg(false)}, 1500);
    })

  return <BackgroundBlock className="예약완료"><MsgModal>{msg}</MsgModal></BackgroundBlock>
}

function HouseList() {
  const { checkIn, checkOut, priceMin, priceMax, minFeePercent, maxFeePercent, guestMsg } = useRecoilValue(RecoilValueGroup)
  const roomDatas = useRecoilValue(RoomData);
  const [confirmMsg, setConfirmMsg] = useRecoilState(reserveMsg)

  const filteringInfo = (data:any) => {
    let str = []
    str.push(`${data.length}개의 숙소`)
    if (setScheduleMsg(checkIn, checkOut) !== defaultValue.checkIn)
      str.push(`${setScheduleMsg(checkIn, checkOut)}`)
    if (getFeeMsg(priceMin, priceMax, minFeePercent, maxFeePercent) !== defaultValue.fee)
      str.push(`${getFeeMsg(priceMin, priceMax, minFeePercent, maxFeePercent)}`)
    if (guestMsg !== defaultValue.guest) str.push(guestMsg)

    return str.join(` · `)
  }
 
  const [open, setOpen] = useState(false)
  const [targetData, setTargetData] = useState(null)
  const handleModalClick = (e:React.MouseEvent<HTMLDivElement, MouseEvent>, el:any) => {
    const target = e.target as Element;
    if (target.closest('.likeUnClick')!==null) return
    if (target.closest('.likeClick')!==null) return
    setOpen(true)
    setTargetData(el)
  }


  return (
    <Frame>
      <SmallSpan>{filteringInfo(roomDatas)}</SmallSpan>
      <ListTitle>선택한 지역의 숙소</ListTitle>
      <ScrollArea>
      {roomDatas.map((el: any) => (
        <Column key={el.id} onClick={(e)=>handleModalClick(e, el)}>
          <div>
            <img src={el.thumbnail_image} width='300' height='220' />
          </div>
          <InfoBlock>
            <FlexBox>
              <div>
                <Title>{el.name}</Title>
                <SmallSpan>
                  침실 {el.home_details.bed}개 · 욕실 {el.home_details.bath_room}개 · 최대 인원
                  {el.home_details.max_guest}명
                </SmallSpan>
              </div>
              <WishToggleBtn setOpen={setOpen} targetData={el}/>
            </FlexBox>
            <div>
              <Review>
                ⭐{el.review.star.toFixed(1)}
                <ReviewSpan> (후기 {el.review.review}개)</ReviewSpan>
              </Review>
              <PriceBlock>
                <PriceDay type={'column'}>
                  ₩ {el.price_per_date} <span>/ 박</span>
                </PriceDay>
                <div>총액 ₩{el.price_per_date}</div>
              </PriceBlock>
            </div>
          </InfoBlock>
        </Column>
      ))}
      {open && <Reservation setOpen={setOpen} targetData={targetData}></Reservation>}
      {console.log(confirmMsg)}
      {confirmMsg && <ConfirmMsg/>}
      </ScrollArea>
    </Frame>
  )
}
const MsgModal = styled.div`
  width: 200px;
  height: 90px;
  background-color: ${({theme})=>theme.color.red_btn};
  color: ${({theme})=>theme.color.white};
  display: flex;
  border-radius: 30px;
  align-items: center;
  justify-content: center;`
const BackgroundBlock = styled.div`
  position: fixed;
  right:0;
  left:0;
  top:0;
  bottom:0;
  background: #00000080;
  z-index:10000;
  display: flex;
  align-items: center;
  place-content: center;`

const FlexBox = styled.div`
display: flex;
justify-content: space-between;`
const ScrollArea = styled.div`

`
const ListTitle = styled.div`
  font-weight: ${({ theme }) => theme.fontWeight.w2};
  font-size: ${({ theme }) => theme.fontSize.lg};
`
const PriceBlock = styled.div`
  display: flex;
  flex-flow: column;
`
const PriceDay = styled.div<IpriceType>`
  font-weight: ${({ theme }) => theme.fontWeight.w2};
  font-size: ${({type, theme}) =>type==='column'? theme.fontSize.x_sm: theme.fontSize.lg};
  align-self: flex-end;  
  span {
      font-weight: ${({ theme }) => theme.fontWeight.w1};
    }
  &:last-child {
    color: ${({ theme }) => theme.color.grey_2};
    font-size: ${({ theme }) => theme.fontSize.super_sm};
    font-weight: ${({ theme }) => theme.fontWeight.w1};
    text-decoration: underline;
  }
`
const ReviewSpan = styled.span`
color: ${({ theme }) => theme.color.grey_2};
font-weight: ${({ theme }) => theme.fontWeight.w1};
`
const Review = styled.div`
  font-weight: ${({ theme }) => theme.fontWeight.w2};
`
const SmallSpan = styled.div`
  color: ${({ theme }) => theme.color.grey_3};
  font-size: ${({ theme }) => theme.fontSize.super_sm};
`
const Title = styled.div`
  font-size: ${({ theme }) => theme.fontSize.x_sm};
  &:after {
    content: '⁘⁘⁘⁘⁘⁘⁘⁘⁘';
    display: block;
    color: ${({ theme }) => theme.color.grey_2};
  }
`
const InfoBlock = styled.div`
  display: flex;
  flex-flow: column;
  justify-content: space-between;
  padding: 10px 24px;
  width: 100%;
  div {
    &: first-child {
      position: relative;
    }
    &: last-child {
      display: flex;
      justify-content: space-between;
    }
  }
`
const Column = styled.div`
  display: flex;
  padding: 24px 0;
  border-bottom: 1px solid ${({ theme }) => theme.color.grey_2};
  img {
    border-radius: 10px;
  }
`
const Frame = styled.div`
  overflow-y: scroll;
  height: 80vh;
  width: 45vw;
  padding: 24px;
`
export default HouseList
