import styled from 'styled-components'
import Place from './Place'
const SearchBar = () => {



  return ( 
  <BarWrapper>
    <Bar>
      <Place/>
    </Bar>  
  </BarWrapper>
  )

}

const BarWrapper = styled.div`
display: flex;
justify-content: center;
position: relative;
top: 20px;
left: 20px;
`
const Bar = styled.div`
width:1120px;
height: 76px;
border-radius: 60px;
border: 1px solid ${props=> props.theme.color.grey_2};
display: flex;
`

export default SearchBar;