import styled from 'styled-components'
interface IReserve{
  handleModalClick: ()=>void
}
function Reservation({handleModalClick}:IReserve) {
  return (<BackgroundBlock className="MODAL" onClick={handleModalClick}>
    <ReservationBlock onClick={(e)=>e.stopPropagation()}/>
  </BackgroundBlock>)
}
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
`
export default Reservation
