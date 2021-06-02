import styled from 'styled-components'
import IconButton from '@material-ui/core/IconButton'
import FavoriteBorderIcon from '@material-ui/icons/FavoriteBorder'
import FavoriteIcon from '@material-ui/icons/Favorite'
import { useRecoilValue } from 'recoil'
import {
  RecoilValueGroup,
  checkInMessage,
  checkOutMessage,
  defaultValue,
} from '../../customHook/atoms'
import { dateToString } from '../../customHook/useDateInfo'
import { setScheduleMsg } from './MiniSearchBar'
import { getFeeMsg } from '../searchBar/fee/Fee'
function HouseList({ data }: any) {
  const keepData = RecoilValueGroup()
  const { checkIn, checkOut, priceMin, priceMax, minFeePercent, maxFeePercent, guestMsg } = keepData
  const filteringInfo = () => {
    let str = []
    str.push(`${data.length}개의 숙소`)
    if (setScheduleMsg(checkIn, checkOut) !== defaultValue.checkIn)
      str.push(`${setScheduleMsg(checkIn, checkOut)}`)
    if (getFeeMsg(priceMin, priceMax, minFeePercent, maxFeePercent) !== defaultValue.fee)
      str.push(`${getFeeMsg(priceMin, priceMax, minFeePercent, maxFeePercent)}`)
    if (guestMsg !== defaultValue.guest) str.push(guestMsg)

    return str.join(` · `)
  }
  return (
    <Frame>
      <SmallSpan>{filteringInfo()}</SmallSpan>
      <ListTitle>선택한 지역의 숙소</ListTitle>
      {data.map((el: any) => (
        <Column key={el.id}>
          <div>
            <img src={el.thumbnail_image} width='300' height='220' />
          </div>
          <InfoBlock>
            <div>
              <div>
                <Title>{el.name}</Title>
                <SmallSpan>
                  침실 {el.home_details.bed}개 · 욕실 {el.home_details.bath_room}개 · 최대 인원
                  {el.home_details.max_guest}명
                </SmallSpan>
              </div>
              <LikeBtn>
                <IconButton aria-label='delete'>
                  <FavoriteBorderIcon fontSize='large' />
                </IconButton>
                {/* <IconButton aria-label='delete'>
                  <FavoriteIcon color='secondary' />
                </IconButton> */}
              </LikeBtn>
            </div>
            <div>
              <Review>
                ⭐{el.review.star.toFixed(1)}
                <span> (후기 {el.review.review}개)</span>
              </Review>
              <Price>
                <div>
                  ₩ {el.price_per_date} <span>/ 박</span>
                </div>
                <div>총액 ₩{el.total_price}</div>
              </Price>
            </div>
          </InfoBlock>
        </Column>
      ))}
    </Frame>
  )
}
const ListTitle = styled.div`
  font-weight: ${({ theme }) => theme.fontWeight.w2};
  font-size: ${({ theme }) => theme.fontSize.lg};
`
const LikeBtn = styled.div`
  position: absolute;
  top: -16px;
  left: 356px;
`
const Price = styled.div`
  display: flex;
  flex-flow: column;
  div {
    font-weight: ${({ theme }) => theme.fontWeight.w2};
    font-size: ${({ theme }) => theme.fontSize.x_sm};
    span {
      font-weight: ${({ theme }) => theme.fontWeight.w1};
    }
    align-self: flex-end;
    &:last-child {
      color: ${({ theme }) => theme.color.grey_2};
      font-size: ${({ theme }) => theme.fontSize.super_sm};
      font-weight: ${({ theme }) => theme.fontWeight.w1};
      text-decoration: underline;
    }
  }
`
const Review = styled.div`
  font-weight: ${({ theme }) => theme.fontWeight.w2};
  span {
    color: ${({ theme }) => theme.color.grey_2};
    font-weight: ${({ theme }) => theme.fontWeight.w1};
  }
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
  width: 400px;
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
  width: 50%;
  margin: 24px;
`
export default HouseList
