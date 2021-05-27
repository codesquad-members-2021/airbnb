import { Modal } from '../../../style/BarStyle'
import useAxios from '../../../customHook/useAxios'
import getData from '../../../customHook/axiosAPI'
interface IFeeType {
  modalType: string
}

const ModalFee: React.FunctionComponent<IFeeType> = ({ modalType }) => {
  const state = useAxios(getData)
  const { loading, error, data } = state

  return (
    <>
      {loading && <div>로딩중</div>}
      {error && <div>요청에러</div>}
      {!data && null}
      <Modal modalType={modalType}>
        {data.prices.map((el: number, idx: number) => (
          <li key={idx}>{el}</li>
        ))}
      </Modal>
    </>
  )
}

export default ModalFee
