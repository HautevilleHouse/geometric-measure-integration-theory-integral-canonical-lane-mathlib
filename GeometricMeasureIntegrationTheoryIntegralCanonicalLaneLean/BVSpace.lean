import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure BVSpacePackage where
  domain : Type u
  measureSpace : MeasureSpace domain
  functionSpace : Type v
  totalVariationFinite : Prop
  derivativeMeasureVectorValued : Prop

structure BVSpaceEvidence (B : BVSpacePackage) where
  totalVariationFiniteClosed : B.totalVariationFinite
  derivativeMeasureVectorValuedClosed : B.derivativeMeasureVectorValued

def BVSpaceClosed (B : BVSpacePackage) : Prop :=
  B.totalVariationFinite ∧ B.derivativeMeasureVectorValued

theorem bv_space_closed_from_evidence (B : BVSpacePackage)
    (E : BVSpaceEvidence B) : BVSpaceClosed B := by
  exact And.intro E.totalVariationFiniteClosed E.derivativeMeasureVectorValuedClosed

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse