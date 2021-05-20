import styled from 'styled-components'
import Button from '@material-ui/core/Button';
import { FaMapMarkedAlt } from 'react-icons/fa'
import { Modal } from '../../style/BarStyle'
interface IType {
  modalType: string;
}
const ModalPlace:React.FunctionComponent<IType> = ({modalType}) =>{
const locations = ['서울', '경기', '부산', '광주', '대전', '전주', '강원', '제주']
return(
  <>
    <Modal modalType={modalType}>
    <Button fullWidth><FaMapMarkedAlt/>&nbsp;&nbsp;가까운 여행지 둘러보기</Button>
    <GridWrapper>
      {locations.map((location,idx)=><Button key={'location'+idx}>{location}</Button>)}
    </GridWrapper>
   
    </Modal>
  </>
)
}
const GridWrapper =styled.div`
display:grid;
grid-template-rows: repeat(4, 1fr);
grid-template-columns: repeat(2, 1fr);`


export default ModalPlace