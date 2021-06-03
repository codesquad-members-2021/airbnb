import styled from 'styled-components'
import { useRecoilValue } from 'recoil'
import { FilterDateToString } from '../../customHook/useDateInfo'
import {PersonnelBlock} from '../searchBar/personnel/Personnel'
import Date from '../searchBar/date/Date'
import {CheckInBlock} from '../searchBar/date/CheckIn'
import {CheckOutBlock} from '../searchBar/date/CheckOut'
import { BarBlock, BarInnerWrapper, BarTitle, BarMessage } from '../../style/BarStyle'
import {personnelMessage,checkInMessage,checkOutMessage} from '../../customHook/atoms'
interface IReserve{
  setOpen: React.Dispatch<React.SetStateAction<boolean>>
  targetData: any
}
interface IpriceType {
  type?:string
}

function Reservation({setOpen, targetData}:IReserve) {
  const checkIn=useRecoilValue(checkInMessage)
  const checkOut=useRecoilValue(checkOutMessage)
  const guestMsg=useRecoilValue(personnelMessage)
  console.log(targetData)
  const handleModalClick = () =>{
    setOpen(false)
  }
  return (<BackgroundBlock className="MODAL" onClick={handleModalClick}>
    <ReservationBlock onClick={(e)=>e.stopPropagation()}>
      <FlexBox>
        <PriceDay type='modal'>
          ₩ {targetData.price_per_date}<span>/ 박</span>
        </PriceDay>
        <ReviewSpan>후기 {targetData.review.review}개</ReviewSpan>
      </FlexBox>
      <GridBox>
        <Date type='modal'/>
        {/* {CheckInBlock(checkIn)}
        {CheckOutBlock(checkOut)}
        {PersonnelBlock(guestMsg)} */}
      </GridBox>
    </ReservationBlock>
  </BackgroundBlock>)
}
const GridBox = styled.div`
display: grid;
grid-template-columns: repeat(2, 1fr);
border: 1px solid ${({theme})=>theme.color.black};
border-radius: 20px;
// div{
//   padding: 10px;
//   border-right: 1px solid black;
//   border-bottom: 1px solid black;
//   &:nth-child(2){
//     border-right: none;
//   }
//   &:nth-child(3){
//     border-bottom: none;
//   }
//   div{
//     border: none;
//     padding: 0;
//   }
}`
const FlexBox= styled.div`
display: flex;
justify-content: space-between;
margin-bottom: 10px;`
const ReviewSpan = styled.span`
display: inline-block;
color: ${({ theme }) => theme.color.grey_2};
font-weight: ${({ theme }) => theme.fontWeight.w1};
text-decoration: underline;
cursor: pointer;
`
const BackgroundBlock = styled.div`
  position: fixed;
  right:0;
  left:0;
  top:0;
  bottom:0;
  background: #00000080;
  z-index:10000;`
const ReservationBlock = styled.div`
  width: 400px;
  height: 542px;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 10px;
  background-color: ${({ theme }) => theme.color.white};
  position: absolute;
  left:40vw;
  top:30vh;
  padding: 24px;
`
const PriceDay = styled.div<IpriceType>`
  font-weight: ${({ theme }) => theme.fontWeight.w2};
  font-size: ${({type, theme}) => type==='column'? theme.fontSize.x_sm: theme.fontSize.lg};
  align-self: flex-end;  
  span {
      font-weight: ${({ theme }) => theme.fontWeight.w1};
      font-size: ${({ theme }) =>theme.fontSize.x_sm};
    }
`
export default Reservation
