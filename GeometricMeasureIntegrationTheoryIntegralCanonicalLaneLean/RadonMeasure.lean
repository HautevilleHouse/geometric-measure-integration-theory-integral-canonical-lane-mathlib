import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure RadonMeasurePackage where
  carrierSpace : Type u
  topology : TopologicalSpace carrierSpace
  borelSigmaAlgebra : SigmaAlgebra carrierSpace
  measure : Measure carrierSpace
  locallyFinite : Prop
  innerRegular : Prop
  finiteOnCompacts : Prop

structure RadonMeasureEvidence (R : RadonMeasurePackage) where
  locallyFiniteClosed : R.locallyFinite
  innerRegularClosed : R.innerRegular
  finiteOnCompactsClosed : R.finiteOnCompacts

def RadonMeasureClosed (R : RadonMeasurePackage) : Prop :=
  R.locallyFinite ∧ R.innerRegular ∧ R.finiteOnCompacts

theorem radon_measure_closed_from_evidence (R : RadonMeasurePackage)
    (E : RadonMeasureEvidence R) : RadonMeasureClosed R := by
  exact And.intro E.locallyFiniteClosed
    (And.intro E.innerRegularClosed E.finiteOnCompactsClosed)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse