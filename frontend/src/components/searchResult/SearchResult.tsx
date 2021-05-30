import { RouteComponentProps } from 'react-router-dom'
import { RecoilValueGroup } from '../../customHook/atoms'
import useAxios from '../../customHook/useAxios'
import { getHouseData } from '../../customHook/axiosAPI'
function SearchResult({ match }: RouteComponentProps) {
  let MIN: number, MAX: number
  const {
    placeToSearch,
    checkIn,
    checkOut,
    priceMin,
    minFeePercent,
    priceMax,
    maxFeePercent,
    adult,
    child,
    baby,
  } = RecoilValueGroup()
  if (typeof priceMin === 'number') {
    MIN = priceMin + minFeePercent
    MAX = priceMax - maxFeePercent
  }

  //!라우터작업한 후에 api요청하기
  // const state = useAxios(() =>
  //   getHouseData(placeToSearch, checkIn, checkOut, MIN, MAX, adult, child, baby)
  // )
  // const { loading, error, data } = state
  // if (loading) return <div>Loading...💭</div>
  // if (error) return <div>에러발생</div>
  // if (!data) return null
  // console.log(state)

  return <div>검색결과 페이지</div>
}
export default SearchResult
