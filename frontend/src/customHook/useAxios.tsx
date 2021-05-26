import { useEffect, useReducer } from 'react'
import { useRecoilState } from 'recoil'
import axios from 'axios'
import { reducer } from './reducer'

function useAxios() {
	const [state, dispatch] = useReducer(reducer, {
		loading: false,
		data: null,
		error: null,
	})
	const url = `http://13.125.140.183/search/prices?check-in=2021-03-02&check-out=2021-03-04`

	const fetchData = async () => {
		dispatch({ type: 'LOADING' })
		try {
			const response = await axios.get(url)
			dispatch({ type: 'SUCCESS', data: response.data })
		} catch (e) {
			dispatch({ type: 'ERROR', error: e })
		}
	}

	useEffect(() => {
		fetchData()
	}, [])

	const { loading, error, data } = state
	if (loading) return <div>로딩중</div>
	if (error) return <div>에러발생</div>
	if (!data) return null
	return (
		<div>
			{data.prices.map((el: number, idx: number) => (
				<li key={idx}>{el}</li>
			))}
		</div>
	)
}

export default useAxios
