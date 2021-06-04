import { useState } from 'react'
import styled from 'styled-components'
import { useRecoilState, useRecoilValue } from 'recoil'
import Reservation from '../reservation/Reservation'
import WishToggleBtn from './WishListToggle'
import {
  RecoilValueGroup,
  defaultValue, RoomData
} from '../../customHook/atoms'
import { setScheduleMsg } from './MiniSearchBar'
import { getFeeMsg } from '../searchBar/fee/Fee'

interface IpriceType {
  type?:string
}

function HouseList({ data }: any) {
  const [RoomDatas, setRoomDatas] = useRecoilState(RoomData)
  setRoomDatas(data)
  const { checkIn, checkOut, priceMin, priceMax, minFeePercent, maxFeePercent, guestMsg } = useRecoilValue(RecoilValueGroup)

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
      <SmallSpan>{filteringInfo(data)}</SmallSpan>
      <ListTitle>선택한 지역의 숙소</ListTitle>
      <ScrollArea>
      {data.map((el: any) => (
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
      </ScrollArea>
    </Frame>
  )
}
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
