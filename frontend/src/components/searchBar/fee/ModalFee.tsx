import { Modal } from '../../../style/BarStyle'
import useAxios from '../../../customHook/useAxios'
import getData from '../../../customHook/axiosAPI'
import Graph from './Graph'
interface IFeeType {
  modalType: string
}

const filteredFee = (fee: Array<number>): Map<number, number> => {
  fee.sort((a, b) => a - b)
  const filtered = fee.reduce((acc, curr) => {
    acc.get(curr) ? acc.set(curr, acc.get(curr) + 1) : acc.set(curr, 1)
    return acc
  }, new Map())

  return filtered
}

const ModalFee: React.FunctionComponent<IFeeType> = ({ modalType }) => {
  const state = useAxios(getData)
  const { loading, error, data } = state
  if (loading) return <div>Loading...💭</div>
  if (error) return <div>에러발생</div>
  if (!data) return null
  const result = filteredFee(data.prices)
  return (
    <>
      <Modal modalType={modalType}>
        <Graph data={result} />
      </Modal>
    </>
  )
}

export default ModalFee
