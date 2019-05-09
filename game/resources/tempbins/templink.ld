SECTIONS 
{
    .data : 
    {
        SORT_BY_NAME(*)(.data)
    }

    /DISCARD/ :
    {
        *(*);
    }
}
