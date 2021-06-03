import { useState, useEffect } from 'react'
import { RouteComponentProps } from 'react-router-dom'
import styled from 'styled-components'
import { useRecoilState, useRecoilValue } from 'recoil'
import { RecoilValueGroup, RouterOrSearch, RoomData } from '../../customHook/atoms'
import useAxios from '../../customHook/useAxios'
import { getHouseData } from '../../customHook/axiosAPI'
import Logo from '../header/Logo'
import CenterMenu from '../header/CenterMenu'
import UserInfo from '../header/UserInfo'
import MiniSearchBar from './MiniSearchBar'
import HouseList from './HouseList'
import SearchBar from '../searchBar/SearchBar'
import Map from './Map'
import {IParams} from '../../Interface'

function SearchResult({ match }: RouteComponentProps<IParams>) {

  const recoilValues = useRecoilValue(RecoilValueGroup)

  console.log(match.params, recoilValues)
  const [clicked, setClicked] = useState(false)
  const RoomDatas = useRecoilValue(RoomData)
  const { state } = useAxios(() => getHouseData(match.params))
  const [isRouter, setIsRouter] = useRecoilState(RouterOrSearch)
  
  useEffect(() => {
    if (RoomDatas.length === 0) setIsRouter(false)
  }, [RoomDatas])

  const { loading, error, data: result } = state
  if (loading) return <div>Loading...💭</div>
  if (error) return <div>에러발생</div>
  if (!result) return null

  let roomData = result && !isRouter ? result.rooms : RoomDatas

  return (
    <TotalWindow>
      <Header>
        <FlexBox>
          <Logo />
          {clicked ? (
            <CenterMenu />
          ) : (
            <MiniSearchBar setClicked={setClicked} inputData={match.params} />
          )}
          <UserInfo />
        </FlexBox>
        {clicked && <SearchBar />}
      </Header>
      <NoPaddingFlexBox>
        <HouseList data={roomData} />
        <Map data={roomData} isRouter={isRouter} />
      </NoPaddingFlexBox>
    </TotalWindow>
  )
}
const TotalWindow = styled.div`
  width: 1536px;
`
const Header = styled.div`
  margin-bottom: 45px;
`
const FlexBox = styled.div`
  display: flex;
  justify-content: space-around;
  margin: 30px 0;
`
const NoPaddingFlexBox = styled.div`
  display: flex;
`
export default SearchResult
