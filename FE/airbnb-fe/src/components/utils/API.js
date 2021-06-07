const END_POINT = 'http://3.35.226.74';

const API = {
  get: {
    home: () => handleFetch(`${END_POINT}/suggestions`),
    room: () => handleFetch(`${END_POINT}/airbnb`),
  },
};

const handleFetch = async (...param) => {
  const fetchData = await (await fetch(...param)).json();

  if (fetchData.statusCode >= 400 || fetchData.body === null)
    throw new Error('Fetch Error');
  return fetchData;
};
export default API;
