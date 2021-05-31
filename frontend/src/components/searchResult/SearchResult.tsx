import { RouteComponentProps } from 'react-router-dom'
import useAxios from '../../customHook/useAxios'
import { getHouseData } from '../../customHook/axiosAPI'
interface params {
  place: string | undefined
  checkIn: string | undefined
  checkOut: string | undefined
  priceMin: string | undefined
  priceMax: string | undefined
  minFeePercent: string | undefined
  maxFeePercent: string | undefined
  adult: string | undefined
  child: string | undefined
  baby: string | undefined
}
function SearchResult({ match }: RouteComponentProps<params>) {
  const { state } = useAxios(() => getHouseData(match.params))

  const { loading, error, data: result } = state
  if (loading) return <div>Loading...💭</div>
  if (error) return <div>에러발생</div>
  if (!result) return null
  console.log(result)

  return <div>검색결과 페이지</div>
}

export default SearchResult
