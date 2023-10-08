#include <stdexcept>

#include "byte_stream.hh"

using namespace std;

ByteStream::ByteStream( uint64_t capacity ) : capacity_( capacity ) {}

void Writer::push( string data )
{
  // Your code here.
  if(available_capacity() == 0 || data.size() == 0)
    return;
  const auto minele = min(data.size(), available_capacity());
  if(minele < data.size()){
    data = data.substr(0, minele);
  }
  
  Stream.push_back(std::move(data));
  Stream_view.emplace_back(Stream.back().c_str(),minele);
  writebytesize += minele; 
  buffsize += minele;
  (void)data;
}

void Writer::close()
{
  isclose = true;
  // Your code here.
}

void Writer::set_error()
{
  iserror = true;
  // Your code here.
}

bool Writer::is_closed() const
{
  // Your code here.
  return {isclose};
}

uint64_t Writer::available_capacity() const
{
  // Your code here.
  return {capacity_ - buffsize};
}

uint64_t Writer::bytes_pushed() const
{
  // Your code here.
  return {writebytesize};
}

string_view Reader::peek() const
{
  // Your code here.
  if(Stream_view.empty())
    return {};
  return Stream_view.front();
}

bool Reader::is_finished() const
{
  // Your code here.
  return {isclose && buffsize == 0};
}

bool Reader::has_error() const
{
  // Your code here.
  return {iserror};
}

void Reader::pop( uint64_t len )
{
  // Your code here.
  int n = min(len, buffsize);
  while(n > 0){
    int frontsize = Stream_view.front().size();
    if(n < frontsize){
      Stream_view.front().remove_prefix(n);
      buffsize -= n;
      readbytesize += n;
      return;
    }
    Stream.pop_front();
    Stream_view.pop_front();
    n -= frontsize;
    buffsize -= frontsize;
    readbytesize += frontsize;
  }
  (void)len;
}

uint64_t Reader::bytes_buffered() const
{
  // Your code here.
  return {buffsize};
}

uint64_t Reader::bytes_popped() const
{
  // Your code here.
  return {readbytesize};
}
