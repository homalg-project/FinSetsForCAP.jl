# SPDX-License-Identifier: GPL-2.0-or-later
# FinSetsForCAP: The elementary topos of (skeletal) finite sets
#
# Implementations
#

##
# we use other method to suppress a warning due to FinSet being a KeyDependentOperation
InstallMethod( @__MODULE__,  FinSet,
        [ IsJuliaObject ],
        
  function ( list )
    
    # integers are converted automatically -> we only have to handle lists here
    
    return FinSet( JuliaToGAP( IsList, list ) );
    
end );

##
InstallMethod( @__MODULE__,  MapOfFinSets,
        [ IsObjectInCategoryOfFiniteSets, IsJuliaObject, IsObjectInCategoryOfFiniteSets ],
        
  function ( source, graph, range )
    
    graph = JuliaToGAP( IsList, graph );
    
    graph = List( graph, x -> JuliaToGAP( IsList, x ) );
    
    return MapOfFinSets( source, graph, range );
    
end );

##
InstallMethod( @__MODULE__,  MapOfFinSets,
        [ IsObjectInSkeletalCategoryOfFiniteSets, IsJuliaObject, IsObjectInSkeletalCategoryOfFiniteSets ],
        
  function ( source, graph, range )
    
    return MapOfFinSets( source, ConvertJuliaToGAP( graph ), range );
    
end );
